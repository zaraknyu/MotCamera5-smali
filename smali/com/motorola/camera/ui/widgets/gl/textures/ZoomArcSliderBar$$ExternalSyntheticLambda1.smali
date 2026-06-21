.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

.field public final synthetic f$1:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda1;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mZoomValueTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda1;->f$1:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar$$ExternalSyntheticLambda1;->f$4:F

    invoke-virtual {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mShortcutsTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;

    invoke-virtual {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ShortcutsTexture;->setPreRotation(FF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mGaugeTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;

    invoke-virtual {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GaugeTexture;->setPreRotation(FF)V

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->mOrientation:F

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomArcSliderBar;->updateCutoutRect(Z)V

    return-void
.end method
