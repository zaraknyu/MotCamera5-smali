.class public final Landroidx/media3/extractor/SingleSampleSeekMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# virtual methods
.method public final getDurationUs()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 3

    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p0, v0, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
