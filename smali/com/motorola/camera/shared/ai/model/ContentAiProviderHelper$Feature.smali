.class public final enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public static final enum SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v1, "GESTURE_AUTO_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v2, "SCENE_DETECTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v3, "SMILE_DETECTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v4, "EYE_CONTOUR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v5, "DOC_SCAN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v6, "SLIDE_SCAN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    filled-new-array/range {v0 .. v5}, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    return-object v0
.end method
