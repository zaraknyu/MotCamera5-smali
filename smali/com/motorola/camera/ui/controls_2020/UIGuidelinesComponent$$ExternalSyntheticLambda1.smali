.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;FI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$1:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$1:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$1:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->viewFinderTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$1:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v2

    const/high16 v3, 0x42880000    # 68.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    sub-float/2addr v2, v3

    sub-float/2addr v2, v3

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v2, v1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda1;->f$1:F

    sub-float/2addr v2, p0

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->aboveToggleBarComponentsGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_3

    float-to-int v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
