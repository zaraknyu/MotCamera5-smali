.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;
.super Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "SCENE_DETECTION"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final checkState(II)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
    .locals 0

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-nez p2, :cond_0

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_MANDATORY:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object p0

    :cond_0
    if-ge p2, p1, :cond_1

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->NO_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object p0
.end method
