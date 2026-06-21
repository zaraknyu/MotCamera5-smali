.class public final Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

.field public static final THROW:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;->THROW:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    return-void
.end method


# virtual methods
.method public lock()V
    .locals 0

    return-void
.end method

.method public unlock()V
    .locals 0

    return-void
.end method
