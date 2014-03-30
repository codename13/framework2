.class Landroid/hardware/fmradio/FmRxEventListner$1;
.super Ljava/lang/Thread;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fmradio/FmRxEventListner;->startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fmradio/FmRxEventListner;

.field final synthetic val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

.field final synthetic val$fd:I


# direct methods
.method constructor <init>(Landroid/hardware/fmradio/FmRxEventListner;ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->this$0:Landroid/hardware/fmradio/FmRxEventListner;

    iput p2, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    iput-object p3, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    .line 68
    const/16 v5, 0x80

    new-array v0, v5, [B

    .line 69
    .local v0, buff:[B
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_5

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, index:I
    const/4 v4, 0x0

    .line 76
    .local v4, state:I
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 77
    iget v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    move-result v1

    .line 79
    .local v1, eventCount:I
    if-ltz v1, :cond_1

    .line 80
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received event. Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 83
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    aget-byte v5, v0, v3

    packed-switch v5, :pswitch_data_0

    .line 208
    :pswitch_0
    const-string v5, "FMRadio"

    const-string v6, "Unknown event"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    :pswitch_1
    const-string v5, "FMRadio"

    const-string v6, "Got READY_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 90
    const/4 v5, 0x1

    invoke-static {v5}, Landroid/hardware/fmradio/FmTransceiver;->setFMPowerState(I)V

    .line 91
    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : FMRxStarting ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvEnableReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 212
    .end local v1           #eventCount:I
    :catch_0
    move-exception v2

    .line 213
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "FMRadio"

    const-string v6, "RunningThread InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 94
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #eventCount:I
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 96
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/hardware/fmradio/FmTransceiver;->setFMPowerState(I)V

    .line 97
    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : FMTurningOff ---> NEW-STATE : FMOff"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v5, "/dev/radio0"

    invoke-static {v5}, Landroid/hardware/fmradio/FmTransceiver;->release(Ljava/lang/String;)Z

    .line 99
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvDisableReceiver()V

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 104
    :pswitch_2
    const-string v5, "FMRadio"

    const-string v6, "Got TUNE_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v6, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    invoke-static {v6}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRadioTuneStatus(I)V

    goto :goto_2

    .line 108
    :pswitch_3
    const-string v5, "FMRadio"

    const-string v6, "Got SEEK_COMPLETE_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Landroid/hardware/fmradio/FmReceiver;->getSearchState()I

    move-result v4

    .line 110
    packed-switch v4, :pswitch_data_1

    :pswitch_4
    goto :goto_2

    .line 113
    :pswitch_5
    const-string v5, "FMRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    .line 115
    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : Search ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v6, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$fd:I

    invoke-static {v6}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchComplete(I)V

    goto/16 :goto_2

    .line 119
    :pswitch_6
    const-string v5, "FMRadio"

    const-string v6, "Current state is SRCH_ABORTED"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v5, "FMRadio"

    const-string v6, "Aborting on-going search command..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    .line 122
    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : Search ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchCancelled()V

    goto/16 :goto_2

    .line 128
    :pswitch_7
    const-string v5, "FMRadio"

    const-string v6, "Got SCAN_NEXT_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchInProgress()V

    goto/16 :goto_2

    .line 132
    :pswitch_8
    const-string v5, "FMRadio"

    const-string v6, "Got RAW_RDS_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsGroupData()V

    goto/16 :goto_2

    .line 136
    :pswitch_9
    const-string v5, "FMRadio"

    const-string v6, "Got RT_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsRtInfo()V

    goto/16 :goto_2

    .line 140
    :pswitch_a
    const-string v5, "FMRadio"

    const-string v6, "Got PS_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsPsInfo()V

    goto/16 :goto_2

    .line 144
    :pswitch_b
    const-string v5, "FMRadio"

    const-string v6, "Got ERROR_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 147
    :pswitch_c
    const-string v5, "FMRadio"

    const-string v6, "Got BELOW_TH_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_2

    .line 151
    :pswitch_d
    const-string v5, "FMRadio"

    const-string v6, "Got ABOVE_TH_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_2

    .line 155
    :pswitch_e
    const-string v5, "FMRadio"

    const-string v6, "Got STEREO_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_2

    .line 159
    :pswitch_f
    const-string v5, "FMRadio"

    const-string v6, "Got MONO_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_2

    .line 163
    :pswitch_10
    const-string v5, "FMRadio"

    const-string v6, "Got RDS_AVAL_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_2

    .line 167
    :pswitch_11
    const-string v5, "FMRadio"

    const-string v6, "Got RDS_NOT_AVAL_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_2

    .line 171
    :pswitch_12
    const-string v5, "FMRadio"

    const-string v6, "Got NEW_SRCH_LIST"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Landroid/hardware/fmradio/FmReceiver;->getSearchState()I

    move-result v4

    .line 173
    packed-switch v4, :pswitch_data_2

    :pswitch_13
    goto/16 :goto_2

    .line 175
    :pswitch_14
    const-string v5, "FMRadio"

    const-string v6, "FmRxEventListener: Current state is AUTO_PRESET_INPROGRESS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    .line 177
    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : Search ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchListComplete()V

    goto/16 :goto_2

    .line 181
    :pswitch_15
    const-string v5, "FMRadio"

    const-string v6, "Current state is SRCH_ABORTED"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v5, "FMRadio"

    const-string v6, "Aborting on-going SearchList command..."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiver;->setSearchState(I)V

    .line 184
    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : Search ---> NEW-STATE : FMRxOn"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchCancelled()V

    goto/16 :goto_2

    .line 190
    :pswitch_16
    const-string v5, "FMRadio"

    const-string v6, "Got NEW_AF_LIST"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsAfInfo()V

    goto/16 :goto_2

    .line 194
    :pswitch_17
    const-string v5, "FMRadio"

    const-string v6, "Got RADIO_DISABLED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 197
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/hardware/fmradio/FmTransceiver;->setFMPowerState(I)V

    .line 198
    const-string v5, "FMRadio"

    const-string v6, "RxEvtList: CURRENT-STATE : FMTurningOff ---> NEW-STATE : FMOff"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v5, "/dev/radio0"

    invoke-static {v5}, Landroid/hardware/fmradio/FmTransceiver;->release(Ljava/lang/String;)Z

    .line 200
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvDisableReceiver()V

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_2

    .line 203
    :cond_4
    const-string v5, "FMRadio"

    const-string v6, "Unexpected RADIO_DISABLED recvd"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v5, p0, Landroid/hardware/fmradio/FmRxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRadioReset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 217
    .end local v1           #eventCount:I
    .end local v3           #index:I
    .end local v4           #state:I
    :cond_5
    return-void

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_17
    .end packed-switch

    .line 110
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 173
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_14
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method
