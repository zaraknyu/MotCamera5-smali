.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;
.super Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

.field public static final INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;


# instance fields
.field public final isStrictSemantics:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([IZ)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    iget v4, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    if-ne v0, v2, :cond_0

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    filled-new-array {v1, v3, v3}, [I

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([IZ)V

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    add-int/2addr v4, v2

    filled-new-array {v0, v4, v3}, [I

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([IZ)V

    move-object v0, v1

    :goto_0
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    new-array v1, v3, [I

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([IZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .locals 1

    const-string/jumbo v0, "versionArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;-><init>([I)V

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isStrictSemantics:Z

    return-void
.end method


# virtual methods
.method public final isCompatible(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Z
    .locals 4

    const-string v0, "metadataVersionFromLanguageVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->isStrictSemantics:Z

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    :goto_0
    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ge v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    if-le v1, v2, :cond_3

    :goto_1
    move-object p1, v0

    :cond_3
    :goto_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    if-ne p0, v1, :cond_4

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    if-nez p0, :cond_5

    :goto_3
    return v2

    :cond_5
    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    if-le p0, v3, :cond_6

    goto :goto_4

    :cond_6
    if-ge p0, v3, :cond_7

    goto :goto_5

    :cond_7
    iget p0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    if-le v0, p0, :cond_8

    :goto_4
    move v2, v1

    :cond_8
    :goto_5
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method
