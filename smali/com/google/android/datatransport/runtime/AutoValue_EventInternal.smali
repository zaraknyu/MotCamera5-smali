.class public final Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final autoMetadata:Ljava/util/Map;

.field public final encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

.field public final eventMillis:J

.field public final transportName:Ljava/lang/String;

.field public final uptimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    iput-wide p3, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    iput-wide p5, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    iput-object p7, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    iget-object v1, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EncodedPayload;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    iget-wide v2, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    iget-wide v2, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    const v2, -0x2aff6277

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EncodedPayload;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventInternal{transportName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code=null, encodedPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", autoMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
