.class public final Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;
.super Landroidx/collection/internal/Lock;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

.field public final synthetic val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isAnimation:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p1, 0x4

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isAnimation:Z

    const/4 p1, 0x4

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float p1, p1

    iput p1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;->val$item:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float p0, p0

    iput p0, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method
