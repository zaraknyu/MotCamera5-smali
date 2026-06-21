.class public interface abstract Landroidx/media3/extractor/text/SubtitleParser$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNSUPPORTED:Landroidx/collection/internal/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/internal/Lock;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/collection/internal/Lock;

    return-void
.end method


# virtual methods
.method public abstract create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;
.end method

.method public abstract getCueReplacementBehavior(Landroidx/media3/common/Format;)I
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)Z
.end method
