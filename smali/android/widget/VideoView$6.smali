.class Landroid/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    .line 431
    const/16 v0, 0x1f41

    if-ne p2, v0, :cond_0

    .line 432
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->m3DAttributes:I
    invoke-static {v0, p3}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;I)I

    .line 433
    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
