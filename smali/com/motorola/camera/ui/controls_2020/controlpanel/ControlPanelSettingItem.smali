.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final anyValueDisabled:Z

.field public final contentDescription:Ljava/lang/String;

.field public final controlPanelValues:Ljava/util/ArrayList;

.field public expanded:Z

.field public final icon:Ljava/lang/Integer;

.field public final isPermanentLock:Z

.field public final key:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final locked:Z

.field public final setting:Lcom/motorola/camera/settings/Setting;

.field public final title:I

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/settings/Setting;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    const-string v2, "getKey(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v1, p1, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->locked:Z

    iget-boolean v1, p1, Lcom/motorola/camera/settings/Setting;->mIsPermanentLock:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->isPermanentLock:Z

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->anyValueDisabled:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0801af

    goto :goto_0

    :cond_0
    const v0, 0x7f0801b0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/settings/Setting;->getAndroidIcon(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->icon:Ljava/lang/Integer;

    iget v0, p1, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->title:I

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->getSettingContentDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->contentDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSettingContentDescription(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget v2, p0, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120546

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120549

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    :goto_3
    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120548

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    :goto_4
    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120547

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    :goto_5
    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12054a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    :goto_6
    move-object v4, v5

    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120545

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
