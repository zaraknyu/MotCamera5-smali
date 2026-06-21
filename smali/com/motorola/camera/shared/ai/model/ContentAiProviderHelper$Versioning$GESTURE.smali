.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;
.super Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "GESTURE"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final checkState(II)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;
    .locals 0

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-ge p2, p1, :cond_0

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->CONTENT_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;->NO_UPDATE_AVAILABLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    return-object p0
.end method
