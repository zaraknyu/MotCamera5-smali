.class public final synthetic Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PreviewSize;

    check-cast p1, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/PreviewSize;->isSameAspectRatio(Lcom/motorola/camera/PreviewSize;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v1, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/VideoFormat;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
