.class public final enum Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

.field public static final enum AI_PERSONAL_COLOR_TONE:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

.field public static final enum AI_PERSONAL_CUSTOMIZE_COLOR_TONE:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

.field public static final Companion:Landroidx/transition/Transition$1;

.field public static final enum GOOGLE_AUTO_ENHANCE:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

.field public static final enum NATURAL:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;


# instance fields
.field public final description:I

.field public final drawableRes:I

.field public final title:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    const v4, 0x7f120206

    const/4 v5, 0x2

    const/4 v1, 0x0

    const v2, 0x7f08011e

    const v3, 0x7f120207

    const-string v6, "AI_PERSONAL_COLOR_TONE"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->AI_PERSONAL_COLOR_TONE:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    const v5, 0x7f12020a

    const/4 v6, 0x3

    const/4 v2, 0x1

    const v3, 0x7f08011e

    const v4, 0x7f12020b

    const-string v7, "AI_PERSONAL_CUSTOMIZE_COLOR_TONE"

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;-><init>(IIIIILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->AI_PERSONAL_CUSTOMIZE_COLOR_TONE:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    const v6, 0x7f12020e

    const/4 v7, 0x1

    const/4 v3, 0x2

    const v4, 0x7f08011f

    const v5, 0x7f12020f

    const-string v8, "GOOGLE_AUTO_ENHANCE"

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;-><init>(IIIIILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->GOOGLE_AUTO_ENHANCE:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    const v7, 0x7f120210

    const/4 v8, 0x0

    const/4 v4, 0x3

    const v5, 0x7f080120

    const v6, 0x7f120211

    const-string v9, "NATURAL"

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;-><init>(IIIIILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->NATURAL:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Landroidx/transition/Transition$1;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroidx/transition/Transition$1;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->Companion:Landroidx/transition/Transition$1;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p6, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->drawableRes:I

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->title:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->description:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
