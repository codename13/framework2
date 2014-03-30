.class public Landroid/media/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRecorder$EventHandler;,
        Landroid/media/MediaRecorder$OnInfoListener;,
        Landroid/media/MediaRecorder$OnErrorListener;,
        Landroid/media/MediaRecorder$VideoEncoder;,
        Landroid/media/MediaRecorder$AudioEncoder;,
        Landroid/media/MediaRecorder$OutputFormat;,
        Landroid/media/MediaRecorder$VideoSource;,
        Landroid/media/MediaRecorder$AudioSource;
    }
.end annotation


# static fields
.field private static final IOBUSY_UNVOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

.field private static final IOBUSY_VOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "MediaRecorder"


# instance fields
.field private mEventHandler:Landroid/media/MediaRecorder$EventHandler;

.field private mFd:Ljava/io/FileDescriptor;

.field private mIsAudioEnabled:Z

.field private mNativeContext:I

.field private mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mPath:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/media/MediaRecorder;->native_init()V

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaRecorder;->mIsAudioEnabled:Z

    .line 117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    .line 128
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;)V

    .line 129
    return-void

    .line 119
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v1, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_0

    .line 122
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_0
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native _setAudioSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setOutputFile(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Landroid/media/MediaRecorder;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object v0
.end method

.method private static checkMicrophoneEnabled()Z
    .locals 5

    .prologue
    .line 1014
    const/4 v1, 0x1

    .line 1016
    .local v1, enabled:Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1018
    .local v2, rp:Landroid/sec/enterprise/RestrictionPolicy;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1024
    .end local v2           #rp:Landroid/sec/enterprise/RestrictionPolicy;
    :goto_0
    if-nez v1, :cond_1

    .line 1026
    const-string v3, "MediaRecorder"

    const-string v4, "MICROPHONE IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const v4, 0x1869f

    if-gt v3, v4, :cond_1

    .line 1030
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 1031
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1035
    :cond_1
    return v1

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final getAudioSourceMax()I
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x7

    return v0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private native native_reset()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .parameter "mediarecorder_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 993
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRecorder;

    .line 994
    .local v1, mr:Landroid/media/MediaRecorder;
    if-nez v1, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-boolean v2, v1, Landroid/media/MediaRecorder;->mIsAudioEnabled:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 999
    invoke-static {}, Landroid/media/MediaRecorder;->checkMicrophoneEnabled()Z

    .line 1003
    :cond_2
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    if-eqz v2, :cond_0

    .line 1004
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaRecorder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1005
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private native setParameter(Ljava/lang/String;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 1067
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_finalize()V

    return-void
.end method

.method public native getMaxAmplitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native native_start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native native_stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public prepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 670
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 671
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 673
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 683
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :goto_0
    invoke-direct {p0}, Landroid/media/MediaRecorder;->_prepare()V

    .line 684
    return-void

    .line 675
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 677
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 678
    iget-object v1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 680
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native release()V
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 751
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_reset()V

    .line 754
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaRecorder;->mIsAudioEnabled:Z

    .line 761
    :cond_0
    return-void
.end method

.method public setAudioChannels(I)V
    .locals 2
    .parameter "numChannels"

    .prologue
    .line 568
    if-gtz p1, :cond_0

    .line 569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-number-of-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public native setAudioEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2
    .parameter "bitRate"

    .prologue
    .line 584
    if-gtz p1, :cond_0

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 2
    .parameter "samplingRate"

    .prologue
    .line 553
    if-gtz p1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-sampling-rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public setAudioSource(I)V
    .locals 1
    .parameter "audio_source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 307
    invoke-static {}, Landroid/media/MediaRecorder;->checkMicrophoneEnabled()Z

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRecorder;->mIsAudioEnabled:Z

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->_setAudioSource(I)V

    .line 311
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 613
    const-string v0, "MediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 623
    const-string v0, "MediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(String) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method public native setCamera(Landroid/hardware/Camera;)V
.end method

.method public setCaptureRate(D)V
    .locals 7
    .parameter "fps"

    .prologue
    .line 375
    const-wide/high16 v3, 0x3ff0

    div-double v0, v3, p1

    .line 376
    .local v0, timeBetweenFrameCapture:D
    const-wide v3, 0x408f400000000000L

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 377
    .local v2, timeBetweenFrameCaptureMs:I
    const-string v3, "time-between-time-lapse-frame-capture=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public setLocation(FF)V
    .locals 8
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const v7, 0x461c4000

    const-wide/high16 v5, 0x3fe0

    .line 423
    mul-float v3, p1, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 424
    .local v0, latitudex10000:I
    mul-float v3, p2, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 426
    .local v1, longitudex10000:I
    const v3, 0xdbba0

    if-gt v0, v3, :cond_0

    const v3, -0xdbba0

    if-ge v0, v3, :cond_1

    .line 427
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 430
    .end local v2           #msg:Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    if-gt v1, v3, :cond_2

    const v3, -0x1b7740

    if-ge v1, v3, :cond_3

    .line 431
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .restart local v2       #msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 435
    .end local v2           #msg:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param-geotag-latitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param-geotag-longitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public native setMaxDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 811
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 812
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 928
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 929
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 397
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-rotation-angle-degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 637
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 638
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 651
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 652
    return-void
.end method

.method public native setOutputFormat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .locals 0
    .parameter "sv"

    .prologue
    .line 149
    iput-object p1, p0, Landroid/media/MediaRecorder;->mSurface:Landroid/view/Surface;

    .line 150
    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 344
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 345
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 346
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 347
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 348
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 349
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3ef

    if-gt v0, v1, :cond_1

    .line 352
    const-string v0, "time-lapse-enable=1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    if-ltz v0, :cond_0

    .line 354
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 355
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 356
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 357
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_0
.end method

.method public native setVideoEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 2
    .parameter "bitRate"

    .prologue
    .line 600
    if-gtz p1, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public native setVideoFrameRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 718
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 719
    .local v0, application:Landroid/app/Application;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .local v2, ioBusyVoteIntent:Landroid/content/Intent;
    const-string v3, "com.android.server.CpuGovernorService.voteType"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    invoke-virtual {v0, v2}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v0           #application:Landroid/app/Application;
    .end local v2           #ioBusyVoteIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->native_start()V

    .line 728
    return-void

    .line 723
    :catch_0
    move-exception v1

    .line 724
    .local v1, exception:Ljava/lang/Exception;
    const-string v3, "MediaRecorder"

    const-string v4, "Unable to vote to turn io_is_busy off."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 733
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 734
    .local v0, application:Landroid/app/Application;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v2, ioBusyUnVoteIntent:Landroid/content/Intent;
    const-string v3, "com.android.server.CpuGovernorService.voteType"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    invoke-virtual {v0, v2}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v0           #application:Landroid/app/Application;
    .end local v2           #ioBusyUnVoteIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->native_stop()V

    .line 743
    return-void

    .line 738
    :catch_0
    move-exception v1

    .line 739
    .local v1, exception:Ljava/lang/Exception;
    const-string v3, "MediaRecorder"

    const-string v4, "Unable to withdraw io_is_busy off vote."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
