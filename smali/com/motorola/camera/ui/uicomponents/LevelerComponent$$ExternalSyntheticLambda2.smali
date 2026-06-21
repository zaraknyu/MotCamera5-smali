.class public final synthetic Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldKeepHidden:Z

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mStateHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldShow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->showLeveler()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldKeepHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->hideLeveler()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
