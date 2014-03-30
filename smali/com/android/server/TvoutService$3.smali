.class Lcom/android/server/TvoutService$3;
.super Landroid/content/BroadcastReceiver;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 304
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, action:Ljava/lang/String;
    const-string v5, "TvoutService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TvoutService Action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v5, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 311
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 314
    .local v3, bStatus:Z
    const-string v5, "TvoutService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TvoutService HDMI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 318
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 319
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 320
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 322
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5}, Lcom/android/server/TvoutService;->TvoutTeminateWFD()Z

    .line 323
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 324
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 325
    .local v4, msg:Landroid/os/Message;
    const-string v5, "HDMI connected. AllShare Cast turned off"

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 484
    .end local v3           #bStatus:Z
    .end local v4           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    const-string v5, "TvoutService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMART_DOCK_CONNECT  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  HDMI_CONNECT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v7}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    .line 487
    const-string v5, "TvoutService_Java"

    const-string v6, "Creating Smart Dock Surface !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    .line 497
    :cond_1
    :goto_1
    const-string v5, "persist.sys.camera.connect"

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$1000(Lcom/android/server/TvoutService;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void

    .line 330
    .restart local v3       #bStatus:Z
    :cond_2
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5, v3}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 331
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5, v3}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 332
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v5, v3}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 333
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    .line 334
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    .line 335
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 336
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 338
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-string v6, "/sys/power/mali_lock"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 374
    :cond_3
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5, v3}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 375
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5, v3}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 376
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v5, v3}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 377
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 379
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-string v6, "/sys/power/mali_lock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    .line 381
    const-string v5, "persist.sys.camera.transform"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v5, "persist.sys.camera.connect"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 384
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 388
    .end local v3           #bStatus:Z
    :cond_4
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 391
    const-string v5, "TvoutService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locale changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    goto/16 :goto_0

    .line 395
    :cond_5
    const-string v5, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 397
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v5

    if-eqz v5, :cond_8

    .line 398
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v6

    add-int/lit16 v6, v6, 0xb4

    rem-int/lit16 v6, v6, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$902(Lcom/android/server/TvoutService;I)I

    .line 399
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    .line 400
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    .line 401
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v6, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v5, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 404
    :cond_6
    :goto_2
    const-string v5, "persist.sys.camera.transform"

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_3
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 410
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v6, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v5, v6, v7}, Lcom/android/server/TvoutService;->access$1002(Lcom/android/server/TvoutService;J)J

    .line 411
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 412
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 402
    :cond_7
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v5

    const-wide/16 v7, 0x2

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 403
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v5, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_2

    .line 407
    :cond_8
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    goto :goto_3

    .line 415
    :cond_9
    const-string v5, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 417
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c

    .line 418
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v6

    add-int/lit16 v6, v6, 0xb4

    rem-int/lit16 v6, v6, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$902(Lcom/android/server/TvoutService;I)I

    .line 419
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    .line 420
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_b

    .line 421
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v6, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v5, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 424
    :cond_a
    :goto_4
    const-string v5, "persist.sys.camera.transform"

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_5
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 430
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 431
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 432
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v6, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v5, v6, v7}, Lcom/android/server/TvoutService;->access$1002(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 422
    :cond_b
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v5

    const-wide/16 v7, 0x2

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    .line 423
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v5, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_4

    .line 427
    :cond_c
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    iget-object v6, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v6}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    goto :goto_5

    .line 434
    :cond_d
    const-string v5, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 436
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 437
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 438
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 439
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v5, v6, v7}, Lcom/android/server/TvoutService;->access$1002(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 441
    :cond_e
    const-string v5, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 443
    const-string v5, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 445
    .local v1, bAllShareCastConnectedFlag:Z
    if-eqz v1, :cond_f

    .line 446
    const-string v5, "TvoutService_Java"

    const-string v6, "AllShare Cast Connected !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 448
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 449
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 452
    :cond_f
    const-string v5, "TvoutService_Java"

    const-string v6, "AllShare Cast NOT Connected !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 454
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 455
    const-string v5, "persist.sys.camera.transform"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v5, "persist.sys.camera.connect"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 460
    .end local v1           #bAllShareCastConnectedFlag:Z
    :cond_10
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 462
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 463
    .local v2, bMouseDockedFlag:I
    const-string v5, "TvoutService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 v5, 0xc

    if-ne v5, v2, :cond_11

    .line 466
    const-string v5, "TvoutService_Java"

    const-string v6, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 470
    :cond_11
    const/16 v5, 0xd

    if-ne v5, v2, :cond_0

    .line 471
    const-string v5, "TvoutService_Java"

    const-string v6, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$1102(Lcom/android/server/TvoutService;Z)Z

    .line 473
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    goto/16 :goto_0

    .line 476
    .end local v2           #bMouseDockedFlag:I
    :cond_12
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 477
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 479
    :cond_13
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_14

    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 481
    :cond_14
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v5, v6}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 491
    :cond_15
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v5}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 493
    const-string v5, "TvoutService_Java"

    const-string v6, "Mouse Connected to Smart dock But HDMI is disconnected !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v5, p0, Lcom/android/server/TvoutService$3;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v5}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    goto/16 :goto_1
.end method
