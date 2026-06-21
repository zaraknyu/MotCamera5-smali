.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

.field public final synthetic f$1:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lkotlinx/coroutines/CoroutineScope;ILcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$3:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->setControlPanelItemExpanded(Z)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;

    const/4 v6, 0x0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$3:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$4:I

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$1$1$1;-><init>(ILcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;ILkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v1, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
