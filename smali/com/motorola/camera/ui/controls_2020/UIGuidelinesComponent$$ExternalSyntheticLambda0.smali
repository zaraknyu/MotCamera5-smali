.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;Lkotlin/jvm/internal/Ref$IntRef;ZI)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->beautyToggleGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v2

    const/high16 v3, 0x42880000    # 68.0f

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v2

    add-float/2addr v2, v3

    const/high16 v3, 0x41700000    # 15.0f

    :goto_0
    add-float/2addr v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v2

    goto :goto_0

    :goto_1
    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v2, v1

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->beautyToggleGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_2

    float-to-int v1, v2

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v1, v0, p0}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    :cond_2
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    if-eqz v1, :cond_3

    iget p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0705ee

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr p0, v1

    iput p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_3

    :cond_3
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_4

    iget v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v1, v0, p0}, Lcom/motorola/camera/utility/ColorUtil;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
