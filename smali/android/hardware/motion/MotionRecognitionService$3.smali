.class Landroid/hardware/motion/MotionRecognitionService$3;
.super Landroid/os/Handler;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 347
    const-string v0, "MotionRecognitionService"

    const-string v1, " send reactive alert "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0x43

    #calls: Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(I)V
    invoke-static {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;I)V

    .line 350
    :cond_0
    return-void
.end method
