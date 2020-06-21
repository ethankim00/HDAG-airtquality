import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
plt.style.use('seaborn-darkgrid')
import seaborn as sns

def plot_metric(mobility_data,state, county, metric):
    """ Generate Plot of a mobility metric over time """
    # TODO - plot actual date instead of number of days
    data = mobility_data[(mobility_data['sub_region_1'] == state) &(mobility_data['sub_region_2'] == county)]
    fig, ax = plt.subplots(1,1, figsize = (15, 10))
    ax.set_title('{} county, {}: {}'.format(county, state, metric), size = 35)
    ax.plot(data[metric], color = 'purple', alpha = 0.5)
    ax.set_ylabel('{} % Change From Baseline'.format(metric), size = 20)