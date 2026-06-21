.class public final Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;


# instance fields
.field public final bytePositionToUpdate:J

.field public final timestampToUpdate:J

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    sput-object v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    iput-wide p2, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    iput-wide p4, p0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-void
.end method
