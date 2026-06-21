.class public final synthetic Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/VideoFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/VideoFormat;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/VideoFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/VideoFormat;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/VideoFormat;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x1e

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/VideoFormat;

    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p1, p0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/VideoFormat;

    invoke-static {p1, p0}, Lcom/motorola/camera/VideoHelper;->isSameFrameRateUpper(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {p1, p0}, Lcom/motorola/camera/VideoHelper;->isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
