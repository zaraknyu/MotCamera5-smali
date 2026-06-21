.class public final synthetic Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p1, p0, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "onStatus"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    array-length p2, p3

    if-ne p2, v0, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->onStatus(I)V

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :pswitch_0
    check-cast p0, Landroidx/media3/ui/PlayerView;

    sget p1, Landroidx/media3/ui/PlayerView;->$r8$clinit:I

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onImageAvailable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    aget-object p1, p3, v0

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p2, p0, Landroidx/media3/ui/PlayerView;->mainLooperHandler:Landroid/os/Handler;

    new-instance p3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    const/16 v0, 0x17

    invoke-direct {p3, v0, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
