.class public abstract Lkotlinx/serialization/json/internal/CharArrayPoolBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final arrays:Lkotlin/collections/ArrayDeque;

.field public charsTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Lkotlin/collections/ArrayDeque;

    return-void
.end method
