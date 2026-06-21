.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "SourceFile"


# instance fields
.field public final mScreenDensity:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

.field public final tutorialHeight:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    const p1, 0x7f120619

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    const/16 p1, 0x30

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->tutorialHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;->mScreenDensity:F

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_SETTING_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
