# 1. תמונת בסיס קלה ומהירה של Linux (Ubuntu 22.04)
FROM ubuntu:22.04

# 2. התקנת כלים בסיסיים שהסקריפט שלנו צריך (procps מספק את top ו-free)
RUN apt-get update && apt-get install -y procps && rm -rf /var/lib/apt/lists/*

# 3. הגדרת תיקיית העבודה בתוך הקונטיינר
WORKDIR /app

# 4. העתקת הסקריפט מהמחשב שלך לתוך תיקיית /app בקונטיינר
COPY collector.sh .

# 5. מתן הרשאות הרצה לסקריפט
RUN chmod +x collector.sh

# 6. ההוראה הראשית: הרץ את collector.sh כשהקונטיינר עולה
CMD ["./collector.sh"]
