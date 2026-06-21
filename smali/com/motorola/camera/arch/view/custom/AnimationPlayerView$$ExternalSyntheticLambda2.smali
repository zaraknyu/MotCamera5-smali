.class public final synthetic Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaPlayer;

.field public final synthetic f$1:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaPlayer;Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    iput p3, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    sget-object v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda4;

    iget-object v1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    iget v2, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$2:I

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;I)V

    iget-object p0, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
