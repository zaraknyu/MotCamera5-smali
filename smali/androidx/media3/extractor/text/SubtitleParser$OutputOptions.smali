.class public final Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;


# instance fields
.field public final outputAllCues:Z

.field public final startTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;-><init>(JZ)V

    sput-object v0, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->ALL:Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    iput-boolean p3, p0, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->outputAllCues:Z

    return-void
.end method
