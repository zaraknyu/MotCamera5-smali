.class public final enum Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final Companion:Lokio/Timeout;

.field public static final enum SCREEN_MODE_MIRROR_HELP_CLICK:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

.field public static final enum SCREEN_MODE_MIRROR_HELP_PRESS:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;


# instance fields
.field public final mDescriptionRes:I

.field public final mHeaderRes:I

.field public final mTitleIconRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MIRROR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "FIRST_TIME_USE_MIRROR_MODE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SCREEN_MODE_MIRROR_HELP_CLICK"

    const/4 v2, 0x0

    const v3, 0x7f08018c

    const v4, 0x7f1201fd

    const v5, 0x7f1201f9

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_MIRROR_HELP_CLICK:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    const v5, 0x7f1201fc

    const v6, 0x7f1201f8

    const-string v2, "SCREEN_MODE_MIRROR_HELP_PRESS"

    const/4 v3, 0x1

    const v4, 0x7f08018d

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_MODE_MIRROR_HELP_PRESS:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lokio/Timeout;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lokio/Timeout;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->Companion:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    return-object v0
.end method
