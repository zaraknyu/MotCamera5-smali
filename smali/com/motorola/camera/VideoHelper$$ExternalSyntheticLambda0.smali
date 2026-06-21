.class public final synthetic Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/VideoFormat;->FHD_SQUARE_2:Landroid/util/Size;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/VideoHelper;->UNSUPPORTED_VIDEO_SIZES_DESKTOP:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    const/16 p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/VideoFormat;->FHD_SQUARE:Landroid/util/Size;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    const/16 p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x2f

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_9
    check-cast p1, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/2addr p1, p0

    if-lez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_a
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {p0}, Lcom/motorola/camera/VideoFormat;->getArea(Landroid/util/Size;)I

    move-result p0

    sget-object p1, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    invoke-static {p1}, Lcom/motorola/camera/VideoFormat;->getArea(Landroid/util/Size;)I

    move-result p1

    if-lt p0, p1, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_b
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p0, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return p0

    :pswitch_c
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-virtual {p0, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    const/16 p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    :goto_5
    return p0

    :pswitch_d
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    const/16 p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_12
    check-cast p1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    if-lez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    return p0

    :pswitch_13
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    const/16 p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_14
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_7

    goto :goto_7

    :cond_7
    const/4 p1, 0x0

    :goto_7
    return p1

    :pswitch_15
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lcom/motorola/camera/mcf/McfMetadata;->$r8$lambda$QHwXLY_txi3WldcimPuDTd6Bxt4(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0

    :pswitch_16
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lcom/motorola/camera/mcf/McfMetadata;->$r8$lambda$UGyeFnCyLrq7HAmWYNj2woE6Lcs(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0

    :pswitch_17
    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    move p0, v0

    goto :goto_8

    :cond_8
    const/4 p0, 0x0

    :goto_8
    xor-int/2addr p0, v0

    return p0

    :pswitch_18
    check-cast p1, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x18

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_9

    :cond_9
    const/4 p0, 0x0

    :goto_9
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
