.class final Lcom/android/internal/widget/multiwaveview/Ease$Cubic$3;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/Ease$Cubic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    const/high16 v1, 0x3f00

    .line 47
    div-float/2addr p1, v1

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    mul-float v0, v1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    sub-float/2addr p1, v3

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method
