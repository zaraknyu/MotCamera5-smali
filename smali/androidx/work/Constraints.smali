.class public final Landroidx/work/Constraints;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:Landroidx/work/Constraints;


# instance fields
.field public final contentTriggerMaxDelayMillis:J

.field public final contentTriggerUpdateDelayMillis:J

.field public final contentUriTriggers:Ljava/util/Set;

.field public final requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

.field public final requiredNetworkType:I

.field public final requiresBatteryNotLow:Z

.field public final requiresCharging:Z

.field public final requiresDeviceIdle:Z

.field public final requiresStorageNotLow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/Constraints;

    invoke-direct {v0}, Landroidx/work/Constraints;-><init>()V

    sput-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "requiredNetworkType"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/work/impl/utils/NetworkRequestCompat;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v2}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    .line 5
    iput-object v0, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 6
    iput v1, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresCharging:Z

    .line 8
    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 9
    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 10
    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 12
    iput-wide v0, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 13
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object v0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Constraints;)V
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-boolean v0, p1, Landroidx/work/Constraints;->requiresCharging:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresCharging:Z

    .line 26
    iget-boolean v0, p1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 27
    iget-object v0, p1, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    iput-object v0, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 28
    iget v0, p1, Landroidx/work/Constraints;->requiredNetworkType:I

    iput v0, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    .line 29
    iget-boolean v0, p1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 30
    iget-boolean v0, p1, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    iput-boolean v0, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 31
    iget-object v0, p1, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    iput-object v0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    .line 32
    iget-wide v0, p1, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    iput-wide v0, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 33
    iget-wide v0, p1, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    iput-wide v0, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/utils/NetworkRequestCompat;IZZZZJJLjava/util/Set;)V
    .locals 1

    const-string/jumbo v0, "requiredNetworkRequestCompat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requiredNetworkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    const-string v0, "contentUriTriggers"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 16
    iput p2, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    .line 17
    iput-boolean p3, p0, Landroidx/work/Constraints;->requiresCharging:Z

    .line 18
    iput-boolean p4, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 19
    iput-boolean p5, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 20
    iput-boolean p6, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 21
    iput-wide p7, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 22
    iput-wide p9, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 23
    iput-object p11, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_a

    const-class v0, Landroidx/work/Constraints;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/work/Constraints;

    iget-boolean v0, p0, Landroidx/work/Constraints;->requiresCharging:Z

    iget-boolean v1, p1, Landroidx/work/Constraints;->requiresCharging:Z

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    iget-boolean v1, p1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    iget-boolean v1, p1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    iget-boolean v1, p1, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    iget-wide v2, p1, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    iget-wide v2, p1, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget v0, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    iget v1, p1, Landroidx/work/Constraints;->requiredNetworkType:I

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object p0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    iget-object p1, p1, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getRequiredNetworkRequest()Landroid/net/NetworkRequest;
    .locals 0

    iget-object p0, p0, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    iget-object p0, p0, Landroidx/work/impl/utils/NetworkRequestCompat;->wrapped:Ljava/lang/Object;

    check-cast p0, Landroid/net/NetworkRequest;

    return-object p0
.end method

.method public final hasContentUriTriggers()Z
    .locals 0

    iget-object p0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    invoke-static {v0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresCharging:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Landroidx/work/Constraints;->getRequiredNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constraints{requiredNetworkType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    invoke-static {v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requiresCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresDeviceIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresBatteryNotLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresStorageNotLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contentTriggerUpdateDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentTriggerMaxDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentUriTriggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
