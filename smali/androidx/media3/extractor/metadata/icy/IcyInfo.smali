.class public final Landroidx/media3/extractor/metadata/icy/IcyInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# instance fields
.field public final rawMetadata:[B

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    iput-object p2, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/extractor/metadata/icy/IcyInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/icy/IcyInfo;

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    iget-object p1, p1, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public final populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    if-eqz p0, :cond_0

    iput-object p0, p1, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    array-length v0, v0

    const-string v1, "\", url=\""

    const-string v2, "\", rawMetadata.length=\""

    const-string v3, "ICY: title=\""

    iget-object v4, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    invoke-static {v3, v4, v1, p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\""

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
