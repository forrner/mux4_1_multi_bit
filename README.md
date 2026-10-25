# 多位四选一选择器 mux4_1
Vivado 可参数化多路4选1 MUX，支持配置数据位宽 WIDTH。

## 端口说明
- d0, d1, d2, d3 : 多路输入，位宽 WIDTH
- sel[1:0]      : 选择信号
- y             : 输出

## 功能
sel=00 → y=d0
sel=01 → y=d1
sel=10 → y=d2
sel=11 → y=d3

## 使用方式
1. 将mux4_1.v添加到Vivado工程
2. 修改参数 WIDTH 更改位宽
3. 可使用tb_mux4_1.v 仿真测试
