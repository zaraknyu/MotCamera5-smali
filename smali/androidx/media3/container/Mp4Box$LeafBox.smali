.class public final Landroidx/media3/container/Mp4Box$LeafBox;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final data:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    iput-object p2, p0, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method
