.class public final Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;
.super Landroidx/media3/extractor/ForwardingSeekMap;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/ChildHelper$Bucket;

.field public final synthetic val$seekMap:Landroidx/media3/extractor/SeekMap;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ChildHelper$Bucket;Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iput-object p3, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-direct {p0, p2}, Landroidx/media3/extractor/ForwardingSeekMap;-><init>(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method


# virtual methods
.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 8

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object p1

    new-instance p2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    iget-object v1, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v2, v1, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-wide v4, v1, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    iget-wide v6, p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance p0, Landroidx/media3/extractor/SeekPoint;

    iget-object p1, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v1, p1, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-wide v3, p1, Landroidx/media3/extractor/SeekPoint;->position:J

    add-long/2addr v3, v6

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p2, v0, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p2
.end method
