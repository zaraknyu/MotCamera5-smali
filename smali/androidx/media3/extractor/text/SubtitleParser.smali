.class public interface abstract Landroidx/media3/extractor/text/SubtitleParser;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
.end method

.method public parseToLegacySubtitle(II[B)Landroidx/media3/extractor/text/Subtitle;
    .locals 6

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    new-instance v5, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v0, 0xf

    invoke-direct {v5, v0, p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x0

    sget-object v4, Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;->ALL:Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;

    move-object v0, p0

    move v3, p2

    move-object v1, p3

    invoke-interface/range {v0 .. v5}, Landroidx/media3/extractor/text/SubtitleParser;->parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V

    new-instance p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;-><init>(Lcom/google/common/collect/RegularImmutableList;)V

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
