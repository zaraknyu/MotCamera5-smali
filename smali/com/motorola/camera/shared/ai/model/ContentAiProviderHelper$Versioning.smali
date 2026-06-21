.class public abstract enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$IVersioning;


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

.field public static final enum CONTENT_BACKWARD_COMPATIBLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;

.field public static final enum DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;

.field public static final enum GESTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

.field public static final enum SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

.field public static final enum SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;

.field public static final enum SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;

    invoke-direct {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;-><init>()V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->CONTENT_BACKWARD_COMPATIBLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;

    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

    invoke-direct {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;-><init>()V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->GESTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

    new-instance v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

    invoke-direct {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;-><init>()V

    sput-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;

    invoke-direct {v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;-><init>()V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;

    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;

    invoke-direct {v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;-><init>()V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;

    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;

    invoke-direct {v5}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;-><init>()V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;

    filled-new-array/range {v0 .. v5}, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-object v0
.end method
