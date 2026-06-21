.class public final enum Lcom/motorola/camera/shared/ai/model/McfMlModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final Companion:Landroidx/collection/internal/Lock;

.field public static final enum DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public static final enum UNDEFINED:Lcom/motorola/camera/shared/ai/model/McfMlModel;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->UNDEFINED:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    new-instance v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v2, "GESTURE_MV1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    new-instance v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v3, "SCENE_DETECTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    new-instance v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v4, "SMILE_DETECTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    new-instance v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v5, "EYE_CONTOUR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    new-instance v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v6, "DOC_SCAN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    new-instance v6, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const-string v7, "SLIDE_SCAN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    filled-new-array/range {v0 .. v6}, [Lcom/motorola/camera/shared/ai/model/McfMlModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->$VALUES:[Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Landroidx/collection/internal/Lock;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->Companion:Landroidx/collection/internal/Lock;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/McfMlModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/McfMlModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->$VALUES:[Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/McfMlModel;

    return-object v0
.end method


# virtual methods
.method public final getJsonValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "substring(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ENGLISH"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "toLowerCase(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
