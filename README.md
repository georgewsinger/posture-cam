# posture-cam

![Posture Graphic](http://cdn2.ubergizmo.com/wp-content/uploads/2011/08/13-Posture.jpg)

Use a webcam to randomly record your posture throughout the day.

## Instructions

1. Purchase a [cheap webcam](http://www.amazon.com/Logitech-Webcam-Widescreen-Calling-Recording/dp/B004FHO5Y6/ref=sr_1_2?s=pc&ie=UTF8&qid=1454517691&sr=1-2&keywords=webcam) off of Amazon.

2. Place the webcam where your posture is visible. You can execute the following script found in this repo to help you with this:

    $ ./webcam_view.sh

 This will simply launch a window which shows you what the webcam can see. In order to get the best view, you may want to use a [USB extension chord](http://www.amazon.com/AmazonBasics-Extension-Cable--Male--Female/dp/B00NH11PEY/ref=sr_1_1?s=pc&ie=UTF8&qid=1454517832&sr=1-1&keywords=USB+extension+chord) and some [velcro strips](http://www.amazon.com/CableWholesale-4-Inch-Yards-Velcro-30CT-07115/dp/B000I97FJ2/ref=sr_1_1?s=pc&ie=UTF8&qid=1454517874&sr=1-1&keywords=velcro+strip) to attach the webcam to the wall.

3. Start randomly recording yourself:

    $ ./hourly_posture_record.sh

 This will launch a script which will randomly record (within a 60 minute interval) a **15 second video of yourself** at at 20 fps (the file will end up being around 50mb). You can then review this video later to see how you "performed". At the very least, you will be able to see what your posture actually looks like once you forget about consciously manipulating it.

4. **Optional:** Set up a [cron job](https://en.wikipedia.org/wiki/Cron) to have this script run all day.

## Dependencies

This is confirmed to work on a linux installation, with a webcam mounted on `/dev/video0` (your webcam should be here by default; if not, try `/dev/video` or `/dev/video1`).  
You also need the following two programs:

- [mplayer](https://wiki.archlinux.org/index.php/MPlayer)
- [streamer](http://linux.die.net/man/1/streamer)
