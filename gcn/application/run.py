import torch
import time
from torch_geometric.data import Data
from torch_geometric.datasets import TUDataset

from torch_geometric.datasets import Planetoid

from torch_geometric.nn import global_mean_pool

#dataset = Planetoid(root='/tmp/Cora', name='Cora')
dataset = TUDataset(root='/tmp/ENZYMES', name='ENZYMES')

print("len(dataset): ", len(dataset))
dataset = dataset.shuffle()
print(dataset)
print("num_classes: ", dataset.num_classes)
print("dataset[0]: ", dataset[0], "; .y: ", dataset[0].y)
print("dataset[250]: ", dataset[250], "; .y: ", dataset[250].y)

train_num = 550

nodes = 0
count = 0
for graph in dataset:
  nodes += len(graph.x)
  count += 1
  print(len(graph.x))
print("avg: ", nodes/count)
exit(0)

import torch.nn.functional as F
from torch_geometric.nn import GCNConv

times = 0

class Net(torch.nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        self.conv1 = GCNConv(dataset.num_node_features, 50)
        self.conv2 = GCNConv(50, dataset.num_classes)

    def forward(self, data):
        x, edge_index = data.x, data.edge_index

        x = self.conv1(x, edge_index)
        x = F.relu(x)
        x = F.dropout(x, training=self.training)
        x = self.conv2(x, edge_index)

        batch = torch.zeros([len(x)], dtype=torch.int64)
#        print("see len(batch): ", len(batch))
#        print("before: ", x)
        x = global_mean_pool(x, batch)
#        print("after: ", x)
        #print("batch: ", batch, self.conv1.weight)
        x = F.log_softmax(x, dim=1)
#        x = torch.sum(x, 0).unsqueeze(0)
        
        return x

model = Net()
optimizer = torch.optim.Adam(model.parameters(), lr=0.0001, weight_decay=5e-4)
#criterion = torch.nn.CrossEntropyLoss()
#optimizer = torch.optim.SGD(model.parameters(), lr=1e-3, momentum=0.6, weight_decay=1e-4)

train_dataset = dataset[:train_num]
test_dataset = dataset[train_num:]

model.train()

for epoch in range(2000):
  for graph in train_dataset:
      optimizer.zero_grad()
      out = model(graph)
      #loss = criterion(out, graph.y)
      loss = F.nll_loss(out, graph.y)
      loss.backward()
      optimizer.step()
  
  model.eval()
  
  correct = 0
  for graph in test_dataset:
    _, pred = model(graph).max(dim=1)
  #  print(graph.y, pred)
    correct += pred.eq(graph.y).sum().item()
  print("Epoch ", epoch, " Accuracy: ", correct / (len(dataset)-train_num))
