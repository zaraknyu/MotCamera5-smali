.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final actualVersion:Ljava/lang/Object;

.field public final classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public final compilerVersion:Ljava/lang/Object;

.field public final expectedVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

.field public final filePath:Ljava/lang/String;

.field public final languageVersion:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->actualVersion:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->compilerVersion:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->languageVersion:Ljava/lang/Object;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->expectedVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->filePath:Ljava/lang/String;

    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->actualVersion:Ljava/lang/Object;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->actualVersion:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->compilerVersion:Ljava/lang/Object;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->compilerVersion:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->languageVersion:Ljava/lang/Object;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->languageVersion:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->expectedVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->expectedVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->filePath:Ljava/lang/String;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->actualVersion:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->compilerVersion:Ljava/lang/Object;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->languageVersion:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->expectedVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->filePath:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IncompatibleVersionErrorData(actualVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->actualVersion:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", compilerVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->compilerVersion:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", languageVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->languageVersion:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expectedVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->expectedVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", classId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/IncompatibleVersionErrorData;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
