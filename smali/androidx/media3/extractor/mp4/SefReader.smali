.class public final Landroidx/media3/extractor/mp4/SefReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

.field public static final COLON_SPLITTER:Lcom/google/common/base/Splitter;


# instance fields
.field public final dataReferences:Ljava/util/ArrayList;

.field public readerState:I

.field public tailLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    new-instance v1, Lcom/google/common/base/Splitter;

    new-instance v2, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/google/common/base/Splitter;-><init>(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V

    sput-object v1, Landroidx/media3/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    new-instance v1, Lcom/google/common/base/Splitter;

    new-instance v2, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/google/common/base/Splitter;-><init>(Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;)V

    sput-object v1, Landroidx/media3/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    return-void
.end method
