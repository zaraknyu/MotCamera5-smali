.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$17$lambda$16$$inlined$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $isLayoutManagerChange$inlined:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;


# direct methods
.method public constructor <init>(ZLcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$17$lambda$16$$inlined$doOnNextLayout$1;->$isLayoutManagerChange$inlined:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$17$lambda$16$$inlined$doOnNextLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$17$lambda$16$$inlined$doOnNextLayout$1;->$isLayoutManagerChange$inlined:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$17$lambda$16$$inlined$doOnNextLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateUiForSplitScreen()V

    :cond_0
    return-void
.end method
