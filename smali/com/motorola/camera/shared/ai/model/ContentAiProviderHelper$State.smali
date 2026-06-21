.class public final enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public static final enum CAMERA_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public static final enum CONTENT_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public static final enum CONTENT_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public static final enum NO_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;


# instance fields
.field public final isCompatible:Z

.field public final isUpdatable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v1, "NO_UPDATE_AVAILABLE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;ZIZ)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->NO_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v4, "CAMERA_UPDATE_AVAILABLE"

    invoke-direct {v1, v4, v2, v2, v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;ZIZ)V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CAMERA_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v5, "CAMERA_UPDATE_MANDATORY"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v3, v6, v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;ZIZ)V

    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v6, "CONTENT_UPDATE_AVAILABLE"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v2, v7, v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;ZIZ)V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    new-instance v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    const-string v7, "CONTENT_UPDATE_MANDATORY"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v3, v8, v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;-><init>(Ljava/lang/String;ZIZ)V

    sput-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    filled-new-array {v0, v1, v4, v5, v6}, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p2, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isCompatible:Z

    iput-boolean p4, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->isUpdatable:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object v0
.end method
