.class public final synthetic Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;


# instance fields
.field public final synthetic f$0:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/media3/extractor/mp4/Track;

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public consume(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, p0}, Landroidx/media3/extractor/AacUtil;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method
