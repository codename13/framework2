.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Chronometer"

.field private static final TICK_WHAT:I = 0x2


# instance fields
.field private mBase:J

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mHandler:Landroid/os/Handler;

.field private mLogged:Z

.field private mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private mRecycle:Ljava/lang/StringBuilder;

.field private mRunning:Z

.field private mStarted:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    .line 264
    new-instance v1, Landroid/widget/Chronometer$1;

    invoke-direct {v1, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    .line 99
    sget-object v1, Lcom/android/internal/R$styleable;->Chronometer:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Landroid/widget/Chronometer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/Chronometer;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    .line 110
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 111
    return-void
.end method

.method private updateRunning()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 251
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 252
    .local v0, running:Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    if-eq v0, v1, :cond_0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/widget/Chronometer;->updateText(J)V

    .line 255
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 256
    iget-object v1, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 260
    :goto_1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    .line 262
    :cond_0
    return-void

    .line 251
    .end local v0           #running:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    .restart local v0       #running:Z
    :cond_2
    iget-object v1, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method private declared-synchronized updateText(J)V
    .locals 8
    .parameter "now"

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-wide v5, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v2, p1, v5

    .line 226
    .local v2, seconds:J
    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    .line 227
    iget-object v5, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v5, v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 230
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 231
    .local v1, loc:Ljava/util/Locale;
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    :cond_0
    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    .line 233
    new-instance v5, Ljava/util/Formatter;

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    .line 235
    :cond_1
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 236
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 239
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 247
    .end local v1           #loc:Ljava/util/Locale;
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p0, v4}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 240
    .restart local v1       #loc:Ljava/util/Locale;
    :catch_0
    move-exception v0

    .line 241
    .local v0, ex:Ljava/util/IllegalFormatException;
    :try_start_3
    iget-boolean v5, p0, Landroid/widget/Chronometer;->mLogged:Z

    if-nez v5, :cond_2

    .line 242
    const-string v5, "Chronometer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal format string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Chronometer;->mLogged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 225
    .end local v0           #ex:Ljava/util/IllegalFormatException;
    .end local v1           #loc:Ljava/util/Locale;
    .end local v2           #seconds:J
    .end local v4           #text:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method dispatchChronometerTick()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    .line 278
    :cond_0
    return-void
.end method

.method public getBase()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 214
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 215
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 220
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 221
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 222
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBase(J)V
    .locals 2
    .parameter "base"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 120
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    .line 121
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 123
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 2
    .parameter "format"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    .line 146
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 149
    :cond_0
    return-void
.end method

.method public setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 164
    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 165
    return-void
.end method

.method public setStarted(Z)V
    .locals 0
    .parameter "started"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 206
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 207
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 208
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 185
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 186
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 197
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 198
    return-void
.end method
