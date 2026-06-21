.class public final synthetic Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Landroid/graphics/PointF;

.field public final synthetic f$2:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/PointF;Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda9;->f$1:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda9;->f$2:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda9;->f$2:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget v5, v0, v3

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x1

    aget v0, v0, v6

    int-to-float v0, v0

    add-float/2addr v5, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda9;->f$1:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mZoomComponent:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    if-eqz v0, :cond_0

    iget-object v4, v2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v4}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iget v5, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, p0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object p0, v2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToGlWorldCoords(Landroid/view/MotionEvent;Lcom/motorola/camera/PreviewSize;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->interceptUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    iget-boolean p0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_1

    iget-object p0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/EventListener;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_1
    return v3
.end method
