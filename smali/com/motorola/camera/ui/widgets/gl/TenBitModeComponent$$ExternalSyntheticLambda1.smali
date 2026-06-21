.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

.field public final synthetic f$1:Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TenBitModeComponent$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method
