```dataviewjs
const labels = ['One', 'Two', 'Three'];
const data = [1, 2, 3];

const chartData = {  
    type: 'bar',
    data: {
        labels: labels,
        datasets: [{
            label: 'Numbers',
            data: data
        }]
    }
}

window.renderChart(chartData, this.container);
```

