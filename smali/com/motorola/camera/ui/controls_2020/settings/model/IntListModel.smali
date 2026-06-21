.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

.field public static final Companion:Lcom/google/android/gms/dynamite/zzf;


# instance fields
.field public final key:I

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    const v1, 0x7f1204a4

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "EXTERNAL_PREVIEW"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    const v2, 0x7f12048b

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AI_LENS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "AI_LENS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    const v3, 0x7f1204c7

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_DV_START_DELAY:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "VIDEO_DV_START_DELAY"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->Companion:Lcom/google/android/gms/dynamite/zzf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    return-object v0
.end method
