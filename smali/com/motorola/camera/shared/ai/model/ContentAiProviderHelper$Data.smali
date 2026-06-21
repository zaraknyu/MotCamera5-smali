.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field public final hash:Ljava/lang/String;

.field public final modelName:Ljava/lang/String;

.field public final state:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

.field public final version:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "modelName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->state:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    iput-object p2, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object p3, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->hash:Ljava/lang/String;

    iput p4, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->version:I

    iput-object p5, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->modelName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->state:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    iget-object v3, p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->state:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object v3, p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->hash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->version:I

    iget v3, p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->version:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->modelName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->modelName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->state:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->hash:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->version:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->modelName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->state:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->modelName:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
