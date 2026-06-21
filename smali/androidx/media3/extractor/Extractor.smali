.class public interface abstract Landroidx/media3/extractor/Extractor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getSniffFailureDetails()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    return-object p0
.end method

.method public abstract init(Landroidx/media3/extractor/ExtractorOutput;)V
.end method

.method public abstract read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method

.method public abstract sniff(Landroidx/media3/extractor/ExtractorInput;)Z
.end method
