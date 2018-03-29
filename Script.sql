-- 1. query untuk dashboard transaksi guru
select sum(b.harga) as total_harga, date(t.tgl_verified), t.status_verf from transaksi t inner join belajar b on t.id_belajar=b.id inner join guru g on b.id_guru=g.id where g.id=1 group by date(t.tgl_verified), t.status_verf order by t.tgl_verified desc;

select sum(b.harga) as total_harga from transaksi t join belajar b on t.id_belajar=b.id where b.id_guru=1 and t.tgl_verified is not null and t.status_verf = 2;

select count(m.id) as total_modul from modul m where m.id_guru = 1;
select * from modul where id_guru = 1;

-- select count(b.id_murid) as total_murid from belajar b where b.id_guru = 1 group by b.id_murid
select count(distinct(b.id_murid)) as total_murid from belajar b where b.id_guru = 1;

select sum(b.harga) as total_harga, date(t.tgl_verified), t.status_verf from transaksi t inner join belajar b on t.id_belajar=b.id inner join guru g on b.id_guru=g.id group by t.status_verf;

select count(m.id) from murid m;

-- select b.id_murid, sum(b.harga) as total_harga, date(b.created_at), t.status_verf from transaksi t inner join belajar b on t.id_belajar=b.id where b.id_murid=4 group by b.id_murid, b.created_at, t.status_verf order by b.id_murid, b.created_at desc
select date(b.created_at) as created_at, sum(case when (t.status_verf = 0) then b.harga else 0 end) as verf_0, sum(case when (t.status_verf = 1) then b.harga else 0 end) as verf_1, sum(case when (t.status_verf = 2) then b.harga else 0 end) as verf_2 from transaksi t inner join belajar b on t.id_belajar=b.id where b.id_murid=4 group by date(b.created_at) order by b.id_murid, b.created_at desc limit 20;

select * from transaksi t inner join belajar b on t.id_belajar=b.id where b.id_murid=4;
	
select distinct(b.id_modul) as total_modul from belajar b where b.id_murid = 4;
select * from modul where id_modul in (select distinct(b.id_modul) as total_modul from belajar b where b.id_murid = 4);

select count(distinct(b.id_modul)) as total_modul from belajar b where b.id_murid = 4 and b.nilai is not null;

select cast((sum(b.nilai) / count(distinct(b.id_modul))) as UNSIGNED) as rata_nilai from belajar b where b.id_murid = 4 and b.nilai is not null;

select b.harga as total_harga from transaksi t inner join belajar b on t.id_belajar=b.id where b.id_murid=4 and t.status_verf=2;