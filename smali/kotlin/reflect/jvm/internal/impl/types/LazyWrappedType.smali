.class public final Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;
.super Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.source "SourceFile"


# instance fields
.field public final computation:Lkotlin/jvm/functions/Function0;

.field public final lazyValue:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

.field public final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string/jumbo v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->computation:Lkotlin/jvm/functions/Function0;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->lazyValue:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    return-void
.end method


# virtual methods
.method public final getArguments()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    return-object p0
.end method

.method public final getDelegate()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->lazyValue:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p0
.end method

.method public final getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    return-object p0
.end method

.method public final isMarkedNullable()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    return p0
.end method

.method public final refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    new-instance v1, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p1, p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->lazyValue:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;->value:Ljava/lang/Object;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "<Not computed yet>"

    return-object p0
.end method

.method public final unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    return-object p0
.end method
