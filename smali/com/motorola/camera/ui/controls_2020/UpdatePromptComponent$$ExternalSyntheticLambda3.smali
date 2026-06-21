.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->activityContext:Landroid/app/Activity;

    new-instance v1, Landroidx/room/InvalidationTracker$implementation$1;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v2, 0x1

    const-class v4, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    const-string v5, "onStateUpdateChange"

    const-string v6, "onStateUpdateChange(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;)V"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/utility/InAppUpdateUtils;-><init>(Landroid/app/Activity;Landroidx/room/InvalidationTracker$implementation$1;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    const v0, 0x7f0a04d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
