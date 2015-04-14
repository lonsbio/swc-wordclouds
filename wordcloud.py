import pandas as pd
from matplotlib import pyplot as plt
from wordcloud import WordCloud, STOPWORDS
feedback = pd.read_csv("data/swc_feedback_day12.csv",delimiter=',')
comments = ' '.join(feedback["Comment"])

font = "/Library/Fonts/Arial Narrow.ttf"
(w,h) = (800,480)
stopwords = STOPWORDS.copy()

swc_wordcloud= WordCloud(font_path=font,stopwords=stopwords,width=w,height=h).generate(comments)

# Open a plot of the generated image.
%matplotlib inline
swc_wordcloud_image = plt.imshow(swc_wordcloud)
ax = swc_wordcloud_image.axes
ax.axis("off")
plt.show(swc_wordcloud_image)
